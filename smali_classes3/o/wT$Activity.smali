.class public Lo/wT$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/wT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Activity"
.end annotation


# instance fields
.field private error:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error"
    .end annotation
.end field

.field private key:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "key"
    .end annotation
.end field

.field private probed:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "probed"
    .end annotation
.end field

.field private servers:[Lo/wT$ActionBar;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "servers"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/tH$PendingIntent;)V
    .locals 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iget-object v0, p1, Lo/tH$PendingIntent;->d:Ljava/lang/String;

    iput-object v0, p0, Lo/wT$Activity;->key:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lo/tH$PendingIntent;->e:[Lo/tH$LoaderManager;

    array-length v0, v0

    new-array v0, v0, [Lo/wT$ActionBar;

    iput-object v0, p0, Lo/wT$Activity;->servers:[Lo/wT$ActionBar;

    .line 81
    iget-object v0, p1, Lo/tH$PendingIntent;->b:Ljava/lang/String;

    iput-object v0, p0, Lo/wT$Activity;->error:Ljava/lang/String;

    .line 82
    iget-boolean v0, p1, Lo/tH$PendingIntent;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lo/wT$Activity;->probed:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 83
    :goto_0
    iget-object v1, p1, Lo/tH$PendingIntent;->e:[Lo/tH$LoaderManager;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 84
    iget-object v1, p0, Lo/wT$Activity;->servers:[Lo/wT$ActionBar;

    new-instance v2, Lo/wT$ActionBar;

    iget-object v3, p1, Lo/tH$PendingIntent;->e:[Lo/tH$LoaderManager;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Lo/wT$ActionBar;-><init>(Lo/tH$LoaderManager;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
