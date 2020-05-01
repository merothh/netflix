.class final Lo/EI$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/EI;-><init>(Lo/Fl;Lio/reactivex/Observable;)V
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
        "Lo/DC;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lo/EI$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/EI$3;

    invoke-direct {v0}, Lo/EI$3;-><init>()V

    sput-object v0, Lo/EI$3;->c:Lo/EI$3;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo/DC;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    instance-of p1, p1, Lo/DC$DialogInterface;

    return p1
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 13
    check-cast p1, Lo/DC;

    invoke-virtual {p0, p1}, Lo/EI$3;->a(Lo/DC;)Z

    move-result p1

    return p1
.end method
