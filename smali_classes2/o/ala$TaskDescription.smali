.class public final Lo/ala$TaskDescription;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ala;->e(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILo/alB;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/alB;


# direct methods
.method constructor <init>(Lo/alB;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lo/ala$TaskDescription;->c:Lo/alB;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 30
    iget-object v0, p0, Lo/ala$TaskDescription;->c:Lo/alB;

    invoke-interface {v0}, Lo/alB;->invoke()Ljava/lang/Object;

    return-void
.end method
