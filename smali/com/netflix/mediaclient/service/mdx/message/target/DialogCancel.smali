.class public Lcom/netflix/mediaclient/service/mdx/message/target/DialogCancel;
.super Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;
.source "DialogCancel.java"


# static fields
.field private static PROPERTY_uid:Ljava/lang/String;


# instance fields
.field private mUid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "uid"

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/message/target/DialogCancel;->PROPERTY_uid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "DIALOG_CANCEL"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;-><init>(Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/message/target/DialogCancel;->mJson:Lorg/json/JSONObject;

    .line 32
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/message/target/DialogCancel;->PROPERTY_uid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/DialogCancel;->mUid:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/DialogCancel;->mUid:Ljava/lang/String;

    return-object v0
.end method
