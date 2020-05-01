.class public Lcom/netflix/mediaclient/service/mdx/message/target/DialogShow$DialogItem;
.super Ljava/lang/Object;
.source "DialogShow.java"


# instance fields
.field public data:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/message/target/DialogShow$DialogItem;->name:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/message/target/DialogShow$DialogItem;->data:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/mdx/message/target/DialogShow$DialogItem;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/message/target/DialogShow$DialogItem;

    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/message/target/DialogShow;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/message/target/DialogShow;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/message/target/DialogShow$DialogItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toJSon()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 108
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 109
    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/message/target/DialogShow;->access$000()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/message/target/DialogShow$DialogItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/message/target/DialogShow;->access$100()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/message/target/DialogShow$DialogItem;->data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    return-object v0
.end method
