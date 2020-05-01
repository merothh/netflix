.class final Lo/InternalError$3;
.super Landroid/media/VolumeProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/InternalError;->d(IIILo/InternalError$TaskDescription;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/InternalError$TaskDescription;


# direct methods
.method constructor <init>(IIILo/InternalError$TaskDescription;)V
    .locals 0

    .line 27
    iput-object p4, p0, Lo/InternalError$3;->e:Lo/InternalError$TaskDescription;

    invoke-direct {p0, p1, p2, p3}, Landroid/media/VolumeProvider;-><init>(III)V

    return-void
.end method


# virtual methods
.method public onAdjustVolume(I)V
    .locals 1

    .line 35
    iget-object v0, p0, Lo/InternalError$3;->e:Lo/InternalError$TaskDescription;

    invoke-interface {v0, p1}, Lo/InternalError$TaskDescription;->d(I)V

    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 1

    .line 30
    iget-object v0, p0, Lo/InternalError$3;->e:Lo/InternalError$TaskDescription;

    invoke-interface {v0, p1}, Lo/InternalError$TaskDescription;->b(I)V

    return-void
.end method
