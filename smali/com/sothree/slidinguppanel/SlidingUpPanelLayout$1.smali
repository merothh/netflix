.class synthetic Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$1;
.super Ljava/lang/Object;
.source "SlidingUpPanelLayout.java"


# static fields
.field static final synthetic $SwitchMap$com$sothree$slidinguppanel$SlidingUpPanelLayout$SlideState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 536
    invoke-static {}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->values()[Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$1;->$SwitchMap$com$sothree$slidinguppanel$SlidingUpPanelLayout$SlideState:[I

    :try_start_0
    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$1;->$SwitchMap$com$sothree$slidinguppanel$SlidingUpPanelLayout$SlideState:[I

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->EXPANDED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    invoke-virtual {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$1;->$SwitchMap$com$sothree$slidinguppanel$SlidingUpPanelLayout$SlideState:[I

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->ANCHORED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;

    invoke-virtual {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SlideState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
