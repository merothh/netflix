.class Lo/jZ$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/jZ$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/jZ;->a(Lo/Bi;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Lo/jZ;


# direct methods
.method constructor <init>(Lo/jZ;I)V
    .locals 0

    .line 104
    iput-object p1, p0, Lo/jZ$4;->c:Lo/jZ;

    iput p2, p0, Lo/jZ$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lo/jY;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lo/jZ$4;->c:Lo/jZ;

    iget v1, p0, Lo/jZ$4;->a:I

    invoke-static {v0, p1, v1}, Lo/jZ;->a(Lo/jZ;Lo/jY;I)V

    return-void
.end method
