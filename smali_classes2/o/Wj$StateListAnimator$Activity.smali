.class final Lo/Wj$StateListAnimator$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Wj$StateListAnimator;->d(Lo/Wj;Lio/reactivex/Observable;)V
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
        "Lio/reactivex/functions/Predicate<",
        "Lo/UP;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lo/Wj$StateListAnimator$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/Wj$StateListAnimator$Activity;

    invoke-direct {v0}, Lo/Wj$StateListAnimator$Activity;-><init>()V

    sput-object v0, Lo/Wj$StateListAnimator$Activity;->b:Lo/Wj$StateListAnimator$Activity;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo/UP;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    instance-of v0, p1, Lo/UP$LoaderManager;

    if-nez v0, :cond_1

    instance-of v0, p1, Lo/UP$VoiceInteractor;

    if-nez v0, :cond_1

    instance-of p1, p1, Lo/UP$BroadcastReceiver;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 9
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lo/Wj$StateListAnimator$Activity;->a(Lo/UP;)Z

    move-result p1

    return p1
.end method
