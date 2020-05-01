.class public final Lo/FH$PictureInPictureParams;
.super Lo/FH;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PictureInPictureParams"
.end annotation


# instance fields
.field private final c:Landroid/os/Parcelable;


# direct methods
.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1

    const-string v0, "layoutManagerSavedState"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0}, Lo/FH;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/FH$PictureInPictureParams;->c:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public final d()Landroid/os/Parcelable;
    .locals 1

    .line 17
    iget-object v0, p0, Lo/FH$PictureInPictureParams;->c:Landroid/os/Parcelable;

    return-object v0
.end method
