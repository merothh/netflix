.class final Lo/Wi$Activity$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Wi$Activity;->c(Lo/Wi;Lio/reactivex/Observable;)V
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
.field public static final a:Lo/Wi$Activity$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/Wi$Activity$StateListAnimator;

    invoke-direct {v0}, Lo/Wi$Activity$StateListAnimator;-><init>()V

    sput-object v0, Lo/Wi$Activity$StateListAnimator;->a:Lo/Wi$Activity$StateListAnimator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lo/UP;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lo/UP$ApplicationInfo;->b:Lo/UP$ApplicationInfo;

    if-eq p1, v0, :cond_1

    sget-object v0, Lo/UP$IntentSender;->a:Lo/UP$IntentSender;

    if-ne p1, v0, :cond_0

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

    .line 7
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lo/Wi$Activity$StateListAnimator;->b(Lo/UP;)Z

    move-result p1

    return p1
.end method