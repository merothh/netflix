.class Lo/Np$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Os$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Np;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Np;


# direct methods
.method constructor <init>(Lo/Np;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lo/Np$7;->c:Lo/Np;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Z)V
    .locals 1

    .line 607
    iget-object v0, p0, Lo/Np$7;->c:Lo/Np;

    invoke-static {v0, p1}, Lo/Np;->c(Lo/Np;Z)V

    return-void
.end method
