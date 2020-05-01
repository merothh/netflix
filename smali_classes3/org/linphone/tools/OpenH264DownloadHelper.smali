.class public Lorg/linphone/tools/OpenH264DownloadHelper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private fileDirection:Ljava/lang/String;

.field private licenseMessage:Ljava/lang/String;

.field private nameFileDownload:Ljava/lang/String;

.field private nameLib:Ljava/lang/String;

.field private openH264DownloadHelperListener:Lorg/linphone/core/OpenH264DownloadHelperListener;

.field private urlDownload:Ljava/lang/String;

.field private userData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/linphone/tools/OpenH264DownloadHelper;->userData:Ljava/util/ArrayList;

    const-string v0, "OpenH264 Video Codec provided by Cisco Systems, Inc."

    .line 57
    iput-object v0, p0, Lorg/linphone/tools/OpenH264DownloadHelper;->licenseMessage:Ljava/lang/String;

    const-string v0, "libopenh264.so"

    .line 58
    iput-object v0, p0, Lorg/linphone/tools/OpenH264DownloadHelper;->nameLib:Ljava/lang/String;

    const-string v0, "http://ciscobinary.openh264.org/libopenh264-1.5.0-android19.so.bz2"

    .line 59
    iput-object v0, p0, Lorg/linphone/tools/OpenH264DownloadHelper;->urlDownload:Ljava/lang/String;

    const-string v0, "libopenh264-1.5.0-android19.so.bz2"

    .line 60
    iput-object v0, p0, Lorg/linphone/tools/OpenH264DownloadHelper;->nameFileDownload:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/linphone/tools/OpenH264DownloadHelper;->fileDirection:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/linphone/tools/OpenH264DownloadHelper;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/linphone/tools/OpenH264DownloadHelper;->fileDirection:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lorg/linphone/tools/OpenH264DownloadHelper;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/linphone/tools/OpenH264DownloadHelper;->nameLib:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lorg/linphone/tools/OpenH264DownloadHelper;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/linphone/tools/OpenH264DownloadHelper;->urlDownload:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lorg/linphone/tools/OpenH264DownloadHelper;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/linphone/tools/OpenH264DownloadHelper;->nameFileDownload:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lorg/linphone/tools/OpenH264DownloadHelper;)Lorg/linphone/core/OpenH264DownloadHelperListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/linphone/tools/OpenH264DownloadHelper;->openH264DownloadHelperListener:Lorg/linphone/core/OpenH264DownloadHelperListener;

    return-object p0
.end method


# virtual methods
.method public downloadCodec()V
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/linphone/tools/OpenH264DownloadHelper$1;

    invoke-direct {v1, p0}, Lorg/linphone/tools/OpenH264DownloadHelper$1;-><init>(Lorg/linphone/tools/OpenH264DownloadHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 238
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getFullPathLib()Ljava/lang/String;
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/linphone/tools/OpenH264DownloadHelper;->fileDirection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/linphone/tools/OpenH264DownloadHelper;->getNameLib()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLicenseMessage()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/linphone/tools/OpenH264DownloadHelper;->licenseMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getNameLib()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/linphone/tools/OpenH264DownloadHelper;->nameLib:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenH264DownloadHelperListener()Lorg/linphone/core/OpenH264DownloadHelperListener;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/linphone/tools/OpenH264DownloadHelper;->openH264DownloadHelperListener:Lorg/linphone/core/OpenH264DownloadHelperListener;

    return-object v0
.end method

.method public getUserData(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_1

    .line 87
    iget-object v0, p0, Lorg/linphone/tools/OpenH264DownloadHelper;->userData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/linphone/tools/OpenH264DownloadHelper;->userData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getUserDataSize()I
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/linphone/tools/OpenH264DownloadHelper;->userData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isCodecFound()Z
    .locals 3

    .line 169
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/linphone/tools/OpenH264DownloadHelper;->fileDirection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/linphone/tools/OpenH264DownloadHelper;->nameLib:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public setNameFileDownload(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lorg/linphone/tools/OpenH264DownloadHelper;->nameFileDownload:Ljava/lang/String;

    return-void
.end method

.method public setNameLib(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lorg/linphone/tools/OpenH264DownloadHelper;->nameLib:Ljava/lang/String;

    return-void
.end method

.method public setOpenH264HelperListener(Lorg/linphone/core/OpenH264DownloadHelperListener;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lorg/linphone/tools/OpenH264DownloadHelper;->openH264DownloadHelperListener:Lorg/linphone/core/OpenH264DownloadHelperListener;

    return-void
.end method

.method public setUrlDownload(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lorg/linphone/tools/OpenH264DownloadHelper;->urlDownload:Ljava/lang/String;

    return-void
.end method

.method public setUserData(Ljava/lang/Object;)I
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/linphone/tools/OpenH264DownloadHelper;->userData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lorg/linphone/tools/OpenH264DownloadHelper;->userData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public setUserData(ILjava/lang/Object;)V
    .locals 1

    if-ltz p1, :cond_1

    .line 107
    iget-object v0, p0, Lorg/linphone/tools/OpenH264DownloadHelper;->userData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/linphone/tools/OpenH264DownloadHelper;->userData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
