.class final Lo/Nl$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Nl;->c(Lo/Nh;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/Nl;

.field final synthetic e:Lo/Nh;


# direct methods
.method constructor <init>(Lo/Nl;Lo/Nh;)V
    .locals 0

    iput-object p1, p0, Lo/Nl$TaskDescription;->b:Lo/Nl;

    iput-object p2, p0, Lo/Nl$TaskDescription;->e:Lo/Nh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Boolean;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    iget-object p1, p0, Lo/Nl$TaskDescription;->b:Lo/Nl;

    invoke-static {p1}, Lo/Nl;->e(Lo/Nl;)Lo/Nh;

    move-result-object p1

    iget-object v0, p0, Lo/Nl$TaskDescription;->e:Lo/Nh;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 55
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lo/Nl$TaskDescription;->b(Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method
