.class public final Lo/UP$TypedArray;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TypedArray"
.end annotation


# instance fields
.field private final d:Lcom/netflix/model/leafs/PostPlayItem;


# direct methods
.method public constructor <init>(Lcom/netflix/model/leafs/PostPlayItem;)V
    .locals 1

    const-string v0, "postPlayItem"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/UP$TypedArray;->d:Lcom/netflix/model/leafs/PostPlayItem;

    return-void
.end method


# virtual methods
.method public final c()Lcom/netflix/model/leafs/PostPlayItem;
    .locals 1

    .line 102
    iget-object v0, p0, Lo/UP$TypedArray;->d:Lcom/netflix/model/leafs/PostPlayItem;

    return-object v0
.end method
