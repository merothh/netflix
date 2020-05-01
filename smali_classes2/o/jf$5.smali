.class Lo/jf$5;
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
.field final synthetic b:Ljava/lang/String;

.field final synthetic e:Lo/jf;


# direct methods
.method constructor <init>(Lo/jf;Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lo/jf$5;->e:Lo/jf;

    iput-object p2, p0, Lo/jf$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 191
    iget-object v0, p0, Lo/jf$5;->e:Lo/jf;

    iget-object v1, p0, Lo/jf$5;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/jf;->a(Lo/jf;Ljava/lang/String;)V

    return-void
.end method
