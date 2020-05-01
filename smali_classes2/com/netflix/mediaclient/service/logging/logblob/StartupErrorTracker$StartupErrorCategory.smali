.class public final enum Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StartupErrorCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

.field public static final enum b:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

.field public static final enum c:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

.field public static final enum d:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

.field public static final enum e:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

.field public static final enum g:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

.field public static final enum h:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

.field private static final synthetic i:[Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;


# instance fields
.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

    new-instance v1, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

    const/4 v2, 0x0

    const-string v3, "Network"

    const-string v4, "network"

    .line 28
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;->e:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

    const/4 v2, 0x1

    const-string v3, "Appboot"

    const-string v4, "appboot"

    .line 29
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;->d:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

    const/4 v2, 0x2

    const-string v3, "Config"

    const-string v4, "config"

    .line 30
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;->a:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

    const/4 v2, 0x3

    const-string v3, "Crash"

    const-string v4, "crash"

    .line 31
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;->b:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

    const/4 v2, 0x4

    const-string v3, "Drm"

    const-string v4, "drm"

    .line 32
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;->c:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

    const/4 v2, 0x5

    const-string v3, "Msl"

    const-string v4, "msl"

    .line 33
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;->g:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

    const/4 v2, 0x6

    const-string v3, "Others"

    const-string v4, "others"

    .line 34
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;->h:Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;->i:[Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;->j:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;->i:[Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/StartupErrorTracker$StartupErrorCategory;->j:Ljava/lang/String;

    return-object v0
.end method
