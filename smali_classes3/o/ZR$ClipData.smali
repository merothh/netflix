.class public final Lo/ZR$ClipData;
.super Lo/ZR;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClipData"
.end annotation


# instance fields
.field private final a:Lo/Br;

.field private final b:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method public constructor <init>(Lo/Br;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "searchResults"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0}, Lo/ZR;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/ZR$ClipData;->a:Lo/Br;

    iput-object p2, p0, Lo/ZR$ClipData;->b:Lcom/netflix/mediaclient/android/app/Status;

    return-void
.end method


# virtual methods
.method public final a()Lo/Br;
    .locals 1

    .line 51
    iget-object v0, p0, Lo/ZR$ClipData;->a:Lo/Br;

    return-object v0
.end method

.method public final c()Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .line 51
    iget-object v0, p0, Lo/ZR$ClipData;->b:Lcom/netflix/mediaclient/android/app/Status;

    return-object v0
.end method
