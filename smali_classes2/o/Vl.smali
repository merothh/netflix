.class public final Lo/Vl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$1$1$1;->onResourceCached(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final c:Lo/Vl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/Vl;

    invoke-direct {v0}, Lo/Vl;-><init>()V

    sput-object v0, Lo/Vl;->c:Lo/Vl;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 672
    sget-object p1, Lo/Vk;->e:Lo/Vk$Application;

    check-cast p1, Lo/MessagePdu;

    const/4 p1, 0x0

    return p1
.end method
