.class public Lo/zV$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/zV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Activity"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field final synthetic d:Lo/zV;

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/zV;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lo/zV$Activity;->d:Lo/zV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lo/zV$Activity;->e:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lo/zV$Activity;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 2

    .line 35
    iget-object v0, p0, Lo/zV$Activity;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "episode"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/zV$Activity;->e:Ljava/lang/String;

    return-object v0
.end method
