class User:
    email: str
    __ipv4: str
    __port: dict

    def __init__(self, email, port):
        self.email = email
        self.__ipv4 = "localhost"
        self.__port = port

    def get_yarn_url(self):
        return "http://" + str(self.__ipv4) + ":" + str(self.__port['8088'])