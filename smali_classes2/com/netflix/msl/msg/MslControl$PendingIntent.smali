.class public Lcom/netflix/msl/msg/MslControl$PendingIntent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/msl/msg/MslControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingIntent"
.end annotation


# instance fields
.field public final b:Lo/ahO;

.field public final c:Lo/ahM;


# direct methods
.method protected constructor <init>(Lo/ahO;Lo/ahM;)V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$PendingIntent;->b:Lo/ahO;

    .line 214
    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$PendingIntent;->c:Lo/ahM;

    return-void
.end method
