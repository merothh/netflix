.class public Lcom/netflix/mediaclient/service/falkor/Falkor;
.super Ljava/lang/Object;
.source "Falkor.java"


# static fields
.field public static final ENABLE_VERBOSE_LOGGING:Z

.field public static final NULL_ROOT:Lcom/netflix/falkor/BranchNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/netflix/mediaclient/service/falkor/Falkor;->NULL_ROOT:Lcom/netflix/falkor/BranchNode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
