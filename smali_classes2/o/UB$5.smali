.class Lo/UB$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/UB;->d(IIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:I

.field final synthetic d:Lo/UB;

.field final synthetic e:F


# direct methods
.method constructor <init>(Lo/UB;IIF)V
    .locals 0

    .line 81
    iput-object p1, p0, Lo/UB$5;->d:Lo/UB;

    iput p2, p0, Lo/UB$5;->c:I

    iput p3, p0, Lo/UB$5;->a:I

    iput p4, p0, Lo/UB$5;->e:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 84
    iget-object v0, p0, Lo/UB$5;->d:Lo/UB;

    iget v1, p0, Lo/UB$5;->c:I

    iget v2, p0, Lo/UB$5;->a:I

    iget v3, p0, Lo/UB$5;->e:F

    invoke-virtual {v0, v1, v2, v3}, Lo/UB;->e(IIF)V

    .line 85
    iget-object v0, p0, Lo/UB$5;->d:Lo/UB;

    iget v1, p0, Lo/UB$5;->c:I

    iget v2, p0, Lo/UB$5;->a:I

    invoke-virtual {v0, v1, v2}, Lo/UB;->d(II)V

    return-void
.end method
