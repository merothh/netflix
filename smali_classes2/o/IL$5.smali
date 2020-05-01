.class Lo/IL$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DE$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/IL;->J()Lo/DE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/IL;


# direct methods
.method constructor <init>(Lo/IL;)V
    .locals 0

    .line 700
    iput-object p1, p0, Lo/IL$5;->d:Lo/IL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 704
    iget-object v0, p0, Lo/IL$5;->d:Lo/IL;

    iget-object v0, v0, Lo/IL;->b:Lo/IL$Application;

    invoke-virtual {v0}, Lo/IL$Application;->a()V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 2

    .line 709
    iget-object v0, p0, Lo/IL$5;->d:Lo/IL;

    iget-object v0, v0, Lo/IL;->b:Lo/IL$Application;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/IL$Application;->a(Z)V

    return-void
.end method
