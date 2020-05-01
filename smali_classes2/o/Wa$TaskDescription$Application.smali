.class final Lo/Wa$TaskDescription$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Wa$TaskDescription;->b(Lo/Wa;Lio/reactivex/Observable;)V
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
.field public static final b:Lo/Wa$TaskDescription$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/Wa$TaskDescription$Application;

    invoke-direct {v0}, Lo/Wa$TaskDescription$Application;-><init>()V

    sput-object v0, Lo/Wa$TaskDescription$Application;->b:Lo/Wa$TaskDescription$Application;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lo/UP;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    instance-of v0, p1, Lo/UP$CursorFactory;

    if-nez v0, :cond_1

    sget-object v0, Lo/UP$ComponentName;->d:Lo/UP$ComponentName;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

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

    .line 7
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lo/Wa$TaskDescription$Application;->d(Lo/UP;)Z

    move-result p1

    return p1
.end method
