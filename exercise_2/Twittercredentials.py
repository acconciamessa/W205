import tweepy

consumer_key = "SUELBDsFVFDjb7uq06lP3anQk";
#eg: consumer_key = "SUELBDsFVFDjb7uq06lP3anQk";


consumer_secret = "Zg28ijLzviASGazNu8ClsHEdxOaMgN4Vn3KG23e9Io5Gd5ki9q";
#eg: consumer_secret = "Zg28ijLzviASGazNu8ClsHEdxOaMgN4Vn3KG23e9Io5Gd5ki9q";

access_token = "762049220052418560-vllgsVanRqQBeb4lyGNCKUevRQRqQwk";
#eg: access_token = "762049220052418560-vllgsVanRqQBeb4lyGNCKUevRQRqQwk";

access_token_secret = "1KuaiCqAr4VJkLeRNg6AiOH9vOfXp9eH1GrX8QPCSD3S2";
#eg: access_token_secret = "1KuaiCqAr4VJkLeRNg6AiOH9vOfXp9eH1GrX8QPCSD3S2";


auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)

api = tweepy.API(auth)
