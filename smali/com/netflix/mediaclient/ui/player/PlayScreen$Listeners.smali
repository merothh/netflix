.class public Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;
.super Ljava/lang/Object;
.source "PlayScreen.java"


# instance fields
.field public audioPositionListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field public episodeSelectorListener:Landroid/view/View$OnClickListener;

.field public playPauseListener:Landroid/view/View$OnClickListener;

.field public skipBackListener:Landroid/view/View$OnClickListener;

.field public surfaceListener:Landroid/view/SurfaceHolder$Callback;

.field public surfaceMeasureListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;

.field public tapListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;

.field public videoPositionListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field public zoomListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
