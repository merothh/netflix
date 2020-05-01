.class final Lo/Wh$TaskDescription$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Wh$TaskDescription;->d(Lo/Wh;Lio/reactivex/Observable;)V
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
.field public static final c:Lo/Wh$TaskDescription$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/Wh$TaskDescription$Activity;

    invoke-direct {v0}, Lo/Wh$TaskDescription$Activity;-><init>()V

    sput-object v0, Lo/Wh$TaskDescription$Activity;->c:Lo/Wh$TaskDescription$Activity;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Lo/UP;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    instance-of p1, p1, Lo/UP$CursorFactory;

    return p1
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 8
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lo/Wh$TaskDescription$Activity;->e(Lo/UP;)Z

    move-result p1

    return p1
.end method
