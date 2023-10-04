class FilterModule(object):
    def filters(self):
        return {
            'hello': self.hello,
        }
    
    @staticmethod
    def hello(value, sign):
        return 'Hello ' + value + sign
