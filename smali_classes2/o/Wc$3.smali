.class final Lo/Wc$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Wc;-><init>(Lo/Vh;Lio/reactivex/Observable;)V
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
.field public static final a:Lo/Wc$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/Wc$3;

    invoke-direct {v0}, Lo/Wc$3;-><init>()V

    sput-object v0, Lo/Wc$3;->a:Lo/Wc$3;

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

    .line 54
    instance-of p1, p1, Lo/UP$Application;

    return p1
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 14
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lo/Wc$3;->b(Lo/UP;)Z

    move-result p1

    return p1
.end method
