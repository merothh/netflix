.class Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage$KeyValuePair;
.super Ljava/lang/Object;
.source "NativeStorage.java"


# instance fields
.field public key:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage$KeyValuePair;->this$0:Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage$KeyValuePair;->key:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage$KeyValuePair;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;Lorg/json/JSONObject;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage$KeyValuePair;->this$0:Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "key"

    invoke-static {p2, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage$KeyValuePair;->key:Ljava/lang/String;

    const-string/jumbo v0, "value"

    invoke-static {p2, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage$KeyValuePair;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "key"

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage$KeyValuePair;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "value"

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage$KeyValuePair;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
