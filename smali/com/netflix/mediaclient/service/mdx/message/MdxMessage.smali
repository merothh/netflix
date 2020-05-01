.class public abstract Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;
.super Ljava/lang/Object;
.source "MdxMessage.java"


# static fields
.field private static final MESSAGE_IS_USER_COMMAND:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final PROPERTY_xid:Ljava/lang/String; = "xid"

.field protected static final TAG:Ljava/lang/String; = "nf_mdx"

.field public static final TYPE_AUDIO_SUBTITLES_CHANGED:Ljava/lang/String; = "AUDIO_SUBTITLES_CHANGED"

.field public static final TYPE_AUDIO_SUBTITLES_SETTINGS:Ljava/lang/String; = "AUDIO_SUBTITLES_SETTINGS"

.field public static final TYPE_DIALOG_CANCEL:Ljava/lang/String; = "DIALOG_CANCEL"

.field public static final TYPE_DIALOG_RESPONSE:Ljava/lang/String; = "DIALOG_RESPONSE"

.field public static final TYPE_DIALOG_SHOW:Ljava/lang/String; = "DIALOG_SHOW"

.field public static final TYPE_GET_AUDIO_SUBTITLES:Ljava/lang/String; = "GET_AUDIO_SUBTITLES"

.field public static final TYPE_HANDSHAKE:Ljava/lang/String; = "HANDSHAKE"

.field public static final TYPE_HANDSHAKE_ACCEPTED:Ljava/lang/String; = "HANDSHAKE_ACCEPTED"

.field public static final TYPE_MESSAGE_IGNORED:Ljava/lang/String; = "MESSAGE_IGNORED"

.field public static final TYPE_META_DATA_CHANGED:Ljava/lang/String; = "META_DATA_CHANGED"

.field public static final TYPE_PIN_VERIFICATION_CANCEL:Ljava/lang/String; = "PIN_VERIFICATION_CANCEL"

.field public static final TYPE_PIN_VERIFICATION_NOT_REQUIRED:Ljava/lang/String; = "PIN_VERIFICATION_NOT_REQUIRED"

.field public static final TYPE_PIN_VERIFICATION_RESPONSE:Ljava/lang/String; = "PIN_VERIFICATION_RESPONSE"

.field public static final TYPE_PIN_VERIFICATION_SHOW:Ljava/lang/String; = "PIN_VERIFICATION_SHOW"

.field public static final TYPE_PLAYER_CAPABILITIES:Ljava/lang/String; = "PLAYER_CAPABILITIES"

.field public static final TYPE_PLAYER_CURRENT_STATE:Ljava/lang/String; = "PLAYER_CURRENT_STATE"

.field public static final TYPE_PLAYER_GET_CAPABILITIES:Ljava/lang/String; = "PLAYER_GET_CAPABILITIES"

.field public static final TYPE_PLAYER_GET_CURRENT_STATE:Ljava/lang/String; = "PLAYER_GET_CURRENT_STATE"

.field public static final TYPE_PLAYER_PAUSE:Ljava/lang/String; = "PLAYER_PAUSE"

.field public static final TYPE_PLAYER_PLAY:Ljava/lang/String; = "PLAYER_PLAY"

.field public static final TYPE_PLAYER_RESUME:Ljava/lang/String; = "PLAYER_RESUME"

.field public static final TYPE_PLAYER_SET_AUTO_ADVANCE:Ljava/lang/String; = "PLAYER_SET_AUTO_ADVANCE"

.field public static final TYPE_PLAYER_SET_CURRENT_TIME:Ljava/lang/String; = "PLAYER_SET_CURRENT_TIME"

.field public static final TYPE_PLAYER_SET_VOLUME:Ljava/lang/String; = "PLAYER_SET_VOLUME"

.field public static final TYPE_PLAYER_SKIP:Ljava/lang/String; = "PLAYER_SKIP"

.field public static final TYPE_PLAYER_STATE_CHANGED:Ljava/lang/String; = "PLAYER_STATE_CHANGED"

.field public static final TYPE_PLAYER_STOP:Ljava/lang/String; = "PLAYER_STOP"

.field public static final TYPE_POSTPLAY_STOP:Ljava/lang/String; = "POSTPLAY_STOP"

.field public static final TYPE_SET_AUDIO_SUBTITLES:Ljava/lang/String; = "SET_AUDIO_SUBTITLES"


# instance fields
.field protected mJson:Lorg/json/JSONObject;

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;->MESSAGE_IS_USER_COMMAND:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;->mJson:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;->mName:Ljava/lang/String;

    return-void
.end method

.method public static isUserCommand(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;->MESSAGE_IS_USER_COMMAND:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public messageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public messageObject()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;->mJson:Lorg/json/JSONObject;

    return-object v0
.end method
