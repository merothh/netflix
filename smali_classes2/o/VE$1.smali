.class final Lo/VE$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VE;-><init>(Lo/Wu;Lio/reactivex/Observable;Lo/UserManager;)V
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
.field public static final b:Lo/VE$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/VE$1;

    invoke-direct {v0}, Lo/VE$1;-><init>()V

    sput-object v0, Lo/VE$1;->b:Lo/VE$1;

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

    .line 77
    sget-object v0, Lo/UP$ServiceConnection;->e:Lo/UP$ServiceConnection;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    instance-of v0, p1, Lo/UP$FragmentManager;

    if-nez v0, :cond_1

    .line 76
    instance-of v0, p1, Lo/UP$ComponentCallbacks2;

    if-nez v0, :cond_1

    .line 77
    instance-of p1, p1, Lo/UP$PictureInPictureParams;

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

    .line 23
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lo/VE$1;->b(Lo/UP;)Z

    move-result p1

    return p1
.end method
