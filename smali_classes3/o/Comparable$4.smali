.class Lo/Comparable$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Comparable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Comparable;


# direct methods
.method constructor <init>(Lo/Comparable;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lo/Comparable$4;->e:Lo/Comparable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 67
    iget-object v0, p0, Lo/Comparable$4;->e:Lo/Comparable;

    invoke-virtual {v0}, Lo/Comparable;->e()V

    .line 68
    iget-object v0, p0, Lo/Comparable$4;->e:Lo/Comparable;

    invoke-virtual {v0}, Lo/Comparable;->i()V

    return-void
.end method
