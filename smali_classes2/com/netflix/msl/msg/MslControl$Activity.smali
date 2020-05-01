.class Lcom/netflix/msl/msg/MslControl$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/msl/msg/MslControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation


# instance fields
.field public final b:Lo/ahK;

.field public final d:Lcom/netflix/msl/msg/MessageContext;


# direct methods
.method public constructor <init>(Lo/ahK;Lcom/netflix/msl/msg/MessageContext;)V
    .locals 0

    .line 1231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1232
    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$Activity;->b:Lo/ahK;

    .line 1233
    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$Activity;->d:Lcom/netflix/msl/msg/MessageContext;

    return-void
.end method
