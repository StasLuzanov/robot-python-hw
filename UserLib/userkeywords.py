from user import *
from UserAPILib import *
import random, string


class UserKeywords(object):
    def create_user_object(self, login=None, password=None, firstName=None, lastName=None, accountId=0, email=None,
                           enabled=True,
                           accountAdmin=False,
                           liteUser=None, engageUser=None, company=None, jobTitle=None, phone=None, address1=None,
                           address2=None,
                           country=None, state=None, zip=None, collaborateLogin=None,
                           autoRefreshEnabled=None, autoRefreshInterval=None, id=None):
        login = login if login else self.__random_word(8)
        password = password if password else self.__random_word(10, True)
        firstName = firstName if firstName else "First name " + login
        lastName = lastName if lastName else "Second name " + login
        email = email if email else login + "@clarabridge.com"

        return User(login, password, firstName, lastName, accountId, email, enabled, accountAdmin,
                    liteUser, engageUser, company, jobTitle, phone, address1, address2,
                    country, state, zip, collaborateLogin,
                    autoRefreshEnabled, autoRefreshInterval, id)

    @staticmethod
    def __random_word(length, hasdigit=False):
        digit = ""
        if hasdigit:
            digit = '1234567890'
        return ''.join(random.choice(string.lowercase + string.uppercase + digit) for i in range(length))

