.class Lo/jd$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/jd;->e([Lo/aeL$StateListAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/String;

.field final synthetic e:Lo/jd;


# direct methods
.method constructor <init>(Lo/jd;Ljava/lang/String;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lo/jd$2;->e:Lo/jd;

    iput-object p2, p0, Lo/jd$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 267
    iget-object v0, p0, Lo/jd$2;->e:Lo/jd;

    iget-object v1, p0, Lo/jd$2;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/jd;->c(Lo/jd;Ljava/lang/String;)V

    return-void
.end method
