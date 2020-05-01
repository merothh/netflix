.class public Lo/bM$TaskDescription;
.super Landroid/os/Binder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/bM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskDescription"
.end annotation


# instance fields
.field final synthetic b:Lo/bM;


# direct methods
.method public constructor <init>(Lo/bM;)V
    .locals 0

    .line 1570
    iput-object p1, p0, Lo/bM$TaskDescription;->b:Lo/bM;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lo/zL;
    .locals 1

    .line 1577
    iget-object v0, p0, Lo/bM$TaskDescription;->b:Lo/bM;

    return-object v0
.end method
