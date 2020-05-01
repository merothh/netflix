.class final Lo/QB$TaskDescription$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/EncryptedPrivateKeyInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/QB$TaskDescription;->d(Ljava/lang/String;Lo/Bi;Lo/Tf;Ljava/lang/Integer;Lo/Yf;)Lo/QD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/BiConsumer<",
        "TV;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/EncryptedPrivateKeyInfo<",
        "Lo/QD;",
        "Lo/QB$Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Yf;

.field final synthetic b:Lo/Tf;

.field final synthetic c:Ljava/lang/Integer;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lo/Bi;


# direct methods
.method constructor <init>(Lo/Tf;Ljava/lang/String;Lo/Bi;Ljava/lang/Integer;Lo/Yf;)V
    .locals 0

    iput-object p1, p0, Lo/QB$TaskDescription$TaskDescription;->b:Lo/Tf;

    iput-object p2, p0, Lo/QB$TaskDescription$TaskDescription;->d:Ljava/lang/String;

    iput-object p3, p0, Lo/QB$TaskDescription$TaskDescription;->e:Lo/Bi;

    iput-object p4, p0, Lo/QB$TaskDescription$TaskDescription;->c:Ljava/lang/Integer;

    iput-object p5, p0, Lo/QB$TaskDescription$TaskDescription;->a:Lo/Yf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lo/BiConsumer;Ljava/lang/Object;FFII)V
    .locals 7

    .line 48
    move-object v1, p1

    check-cast v1, Lo/QD;

    move-object v2, p2

    check-cast v2, Lo/QB$Activity;

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lo/QB$TaskDescription$TaskDescription;->e(Lo/QD;Lo/QB$Activity;FFII)V

    return-void
.end method

.method public final e(Lo/QD;Lo/QB$Activity;FFII)V
    .locals 0

    const/16 p2, 0x32

    int-to-float p2, p2

    cmpl-float p2, p3, p2

    if-lez p2, :cond_0

    .line 85
    iget-object p2, p0, Lo/QB$TaskDescription$TaskDescription;->a:Lo/Yf;

    invoke-virtual {p1}, Lo/QD;->h()Ljava/lang/String;

    move-result-object p3

    sget-object p4, Lcom/netflix/cl/model/AppView;->boxArt:Lcom/netflix/cl/model/AppView;

    invoke-virtual {p1}, Lo/QD;->s()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    invoke-virtual {p2, p3, p4, p1}, Lo/Yf;->a(Ljava/lang/String;Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    :cond_0
    return-void
.end method
