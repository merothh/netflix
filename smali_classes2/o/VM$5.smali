.class final Lo/VM$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VM;-><init>(Lo/WC;Lio/reactivex/Observable;Lo/UK;Lio/reactivex/Observable;)V
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
        "Lo/UK$TaskDescription;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lo/VM$5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/VM$5;

    invoke-direct {v0}, Lo/VM$5;-><init>()V

    sput-object v0, Lo/VM$5;->c:Lo/VM$5;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lo/UK$TaskDescription;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lo/UK$TaskDescription;->e()Lo/Bc;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 22
    check-cast p1, Lo/UK$TaskDescription;

    invoke-virtual {p0, p1}, Lo/VM$5;->b(Lo/UK$TaskDescription;)Z

    move-result p1

    return p1
.end method
