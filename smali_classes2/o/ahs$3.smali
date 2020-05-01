.class Lo/ahs$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ahs$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ahs;->d(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/ahs;


# direct methods
.method constructor <init>(Lo/ahs;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lo/ahs$3;->e:Lo/ahs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lo/ahs$3;->e:Lo/ahs;

    invoke-virtual {v0, p1}, Lo/ahs;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1
.end method
