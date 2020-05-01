.class Lo/Comparable$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Compiler$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Comparable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Comparable;


# direct methods
.method constructor <init>(Lo/Comparable;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lo/Comparable$5;->d:Lo/Comparable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 85
    iget-object v0, p0, Lo/Comparable$5;->d:Lo/Comparable;

    invoke-virtual {v0}, Lo/Comparable;->b()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 1

    .line 80
    iget-object v0, p0, Lo/Comparable$5;->d:Lo/Comparable;

    invoke-virtual {v0}, Lo/Comparable;->c()V

    return-void
.end method
