class FilterModule(object):
    def filters(self):
        return {
            'goodbye': self.goodbye,
        }
    
    @staticmethod
    def goodbye(value, sign):
        return 'Goodbye ' + value + sign
