from torch.utils.tensorboard.writer import SummaryWriter

class Writer:
    def __init__(self,log_dir=None):
        self.writer = SummaryWriter(log_dir)
        self.counts_dict = {}

    def write(self, tag, **kwargs):
        i = self.counts_dict[tag] if tag in self.counts_dict else 0
        for key, value in kwargs.items():
            self.writer.add_scalar(f'{tag}/{key}', value, i)
        self.counts_dict[tag] = i + 1
    
    def close(self):
        self.writer.close()
        self.closed = True

    def __del__(self):
        if getattr(self, 'closed', False):
            self.close()