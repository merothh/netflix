.class Lo/acW$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acW;-><init>(Lo/acV;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/acW;


# direct methods
.method constructor <init>(Lo/acW;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lo/acW$2;->a:Lo/acW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    .line 156
    iget-object p1, p0, Lo/acW$2;->a:Lo/acW;

    invoke-static {p1}, Lo/acW;->a(Lo/acW;)V

    return-void
.end method