.class public final Lcom/netflix/mediaclient/service/mdx/message/target/PinRequired;
.super Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;
.source "PinRequired.java"


# static fields
.field private static PROPERTY_ancestorVideoId:Ljava/lang/String;

.field private static PROPERTY_ancestorVideoType:Ljava/lang/String;

.field private static PROPERTY_title:Ljava/lang/String;

.field private static PROPERTY_videoId:Ljava/lang/String;


# instance fields
.field private mAncestorVideoId:I

.field private mAncestorVideoType:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mVideoId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "title"

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/message/target/PinRequired;->PROPERTY_title:Ljava/lang/String;

    const-string/jumbo v0, "videoId"

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/message/target/PinRequired;->PROPERTY_videoId:Ljava/lang/String;

    const-string/jumbo v0, "ancestorVideoId"

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/message/target/PinRequired;->PROPERTY_ancestorVideoId:Ljava/lang/String;

    const-string/jumbo v0, "ancestorVideoType"

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/message/target/PinRequired;->PROPERTY_ancestorVideoType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v1, -0x1

    const-string/jumbo v0, "PIN_VERIFICATION_SHOW"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/message/target/PinRequired;->PROPERTY_title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/PinRequired;->mTitle:Ljava/lang/String;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/message/target/PinRequired;->PROPERTY_videoId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/PinRequired;->mVideoId:I

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/message/target/PinRequired;->PROPERTY_ancestorVideoId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/PinRequired;->mAncestorVideoId:I

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/message/target/PinRequired;->PROPERTY_ancestorVideoType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/PinRequired;->mAncestorVideoType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAncestorVideoId()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/PinRequired;->mAncestorVideoId:I

    return v0
.end method

.method public getAncestorVideoType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/PinRequired;->mAncestorVideoType:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/PinRequired;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/PinRequired;->mVideoId:I

    return v0
.end method
