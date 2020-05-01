.class Lo/MetadataReader$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MetadataReader;->b(IILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;ZZLo/ci;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/MetadataReader;

.field final synthetic c:Lo/ci;


# direct methods
.method constructor <init>(Lo/MetadataReader;Lo/ci;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lo/MetadataReader$4;->b:Lo/MetadataReader;

    iput-object p2, p0, Lo/MetadataReader$4;->c:Lo/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 294
    iget-object v0, p0, Lo/MetadataReader$4;->c:Lo/ci;

    sget-object v1, Lo/LegacyErrorStrings;->h:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lo/ci;->h(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
