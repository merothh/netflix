.class final Lo/OffHostApduService$Dialog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/OffHostApduService;->c(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lo/OffHostApduService$Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/OffHostApduService$Dialog;

    invoke-direct {v0}, Lo/OffHostApduService$Dialog;-><init>()V

    sput-object v0, Lo/OffHostApduService$Dialog;->b:Lo/OffHostApduService$Dialog;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lo/OffHostApduService$Dialog;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d(Ljava/lang/Throwable;)V
    .locals 0

    .line 231
    sget-object p1, Lo/OffHostApduService;->e:Lo/OffHostApduService$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method