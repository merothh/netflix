.class public Lo/hK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lo/hK;->c:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lo/hK;->e:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lo/hK;->a:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lo/hK;->f:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lo/hK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 38
    iput-object p5, p0, Lo/hK;->g:Ljava/lang/Runnable;

    return-void
.end method
