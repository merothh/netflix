.class Lo/jf$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/jf;->a([Lo/aeL$StateListAnimator;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/jf;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/jf;Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lo/jf$4;->b:Lo/jf;

    iput-object p2, p0, Lo/jf$4;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 184
    iget-object v0, p0, Lo/jf$4;->b:Lo/jf;

    iget-object v1, p0, Lo/jf$4;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/jf;->a(Lo/jf;Ljava/lang/String;)V

    return-void
.end method
