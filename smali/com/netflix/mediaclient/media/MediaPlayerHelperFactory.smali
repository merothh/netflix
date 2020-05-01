.class public final Lcom/netflix/mediaclient/media/MediaPlayerHelperFactory;
.super Ljava/lang/Object;
.source "MediaPlayerHelperFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_player"

.field private static defaultHelper:Lcom/netflix/mediaclient/media/DefaultMediaPlayerHelper;

.field private static jpHelper:Lcom/netflix/mediaclient/media/JPlayerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-object v0, Lcom/netflix/mediaclient/media/MediaPlayerHelperFactory;->jpHelper:Lcom/netflix/mediaclient/media/JPlayerHelper;

    .line 23
    sput-object v0, Lcom/netflix/mediaclient/media/MediaPlayerHelperFactory;->defaultHelper:Lcom/netflix/mediaclient/media/DefaultMediaPlayerHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/netflix/mediaclient/media/PlayerType;)Lcom/netflix/mediaclient/media/MediaPlayerHelper;
    .locals 2

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Type is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device10:Lcom/netflix/mediaclient/media/PlayerType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device11:Lcom/netflix/mediaclient/media/PlayerType;

    if-ne p1, v0, :cond_3

    .line 45
    :cond_1
    const-string/jumbo v0, "nf_player"

    const-string/jumbo v1, "Use JPlayer helper"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget-object v0, Lcom/netflix/mediaclient/media/MediaPlayerHelperFactory;->jpHelper:Lcom/netflix/mediaclient/media/JPlayerHelper;

    if-nez v0, :cond_2

    .line 47
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayerHelper;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/JPlayerHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/netflix/mediaclient/media/MediaPlayerHelperFactory;->jpHelper:Lcom/netflix/mediaclient/media/JPlayerHelper;

    .line 49
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/media/MediaPlayerHelperFactory;->jpHelper:Lcom/netflix/mediaclient/media/JPlayerHelper;

    .line 59
    :goto_0
    return-object v0

    .line 51
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device12:Lcom/netflix/mediaclient/media/PlayerType;

    if-ne p1, v0, :cond_4

    .line 52
    const-string/jumbo v0, "nf_player"

    const-string/jumbo v1, "Use JPlayer2 helper"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer2Helper;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/JPlayer2Helper;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 55
    :cond_4
    const-string/jumbo v0, "nf_player"

    const-string/jumbo v1, "Use default player helper"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget-object v0, Lcom/netflix/mediaclient/media/MediaPlayerHelperFactory;->defaultHelper:Lcom/netflix/mediaclient/media/DefaultMediaPlayerHelper;

    if-nez v0, :cond_5

    .line 57
    new-instance v0, Lcom/netflix/mediaclient/media/DefaultMediaPlayerHelper;

    invoke-direct {v0}, Lcom/netflix/mediaclient/media/DefaultMediaPlayerHelper;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/media/MediaPlayerHelperFactory;->defaultHelper:Lcom/netflix/mediaclient/media/DefaultMediaPlayerHelper;

    .line 59
    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/media/MediaPlayerHelperFactory;->defaultHelper:Lcom/netflix/mediaclient/media/DefaultMediaPlayerHelper;

    goto :goto_0
.end method
