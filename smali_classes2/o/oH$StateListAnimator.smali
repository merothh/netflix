.class final Lo/oH$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/oH;->b(Lo/nU;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/nU;

.field final synthetic b:Lo/oH;


# direct methods
.method constructor <init>(Lo/oH;Lo/nU;)V
    .locals 0

    iput-object p1, p0, Lo/oH$StateListAnimator;->b:Lo/oH;

    iput-object p2, p0, Lo/oH$StateListAnimator;->a:Lo/nU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 30
    iget-object v0, p0, Lo/oH$StateListAnimator;->b:Lo/oH;

    iget-object v1, p0, Lo/oH$StateListAnimator;->a:Lo/nU;

    invoke-static {v0, v1}, Lo/oH;->a(Lo/oH;Lo/nU;)V

    return-void
.end method
