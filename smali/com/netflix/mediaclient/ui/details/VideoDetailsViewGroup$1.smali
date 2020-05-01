.class final Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$1;
.super Ljava/util/EnumMap;
.source "VideoDetailsViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap",
        "<",
        "Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 71
    sget-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->HD:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    const v1, 0x7f0802f5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->UHD:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    const v1, 0x7f0802e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->_5dot1:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    const v1, 0x7f0802e5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->_3D:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    const v1, 0x7f0802e3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->HDR10:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    const v1, 0x7f0802e7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->DOLBY_VISION:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    const v1, 0x7f0802e6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method
