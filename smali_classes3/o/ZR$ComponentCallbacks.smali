.class public final Lo/ZR$ComponentCallbacks;
.super Lo/ZR;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComponentCallbacks"
.end annotation


# instance fields
.field private final c:Lcom/netflix/mediaclient/android/app/Status;

.field private final d:Lo/Bs;


# direct methods
.method public constructor <init>(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "searchResults"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0}, Lo/ZR;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/ZR$ComponentCallbacks;->d:Lo/Bs;

    iput-object p2, p0, Lo/ZR$ComponentCallbacks;->c:Lcom/netflix/mediaclient/android/app/Status;

    return-void
.end method


# virtual methods
.method public final b()Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .line 45
    iget-object v0, p0, Lo/ZR$ComponentCallbacks;->c:Lcom/netflix/mediaclient/android/app/Status;

    return-object v0
.end method

.method public final c()Lo/Bs;
    .locals 1

    .line 44
    iget-object v0, p0, Lo/ZR$ComponentCallbacks;->d:Lo/Bs;

    return-object v0
.end method
