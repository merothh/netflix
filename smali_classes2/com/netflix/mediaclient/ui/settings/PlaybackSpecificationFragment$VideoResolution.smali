.class public final enum Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoResolution"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

.field public static final enum b:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

.field public static final enum c:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

.field public static final enum d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

.field public static final enum e:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

    new-instance v1, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

    const/4 v2, 0x0

    const-string v3, "UNKNOWN"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;->c:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

    const/4 v2, 0x1

    const-string v3, "SD"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;->e:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

    const/4 v2, 0x2

    const-string v3, "HD_720P"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;->b:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

    const/4 v2, 0x3

    const-string v3, "HD_1080P"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;->a:[Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;->a:[Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

    return-object v0
.end method
