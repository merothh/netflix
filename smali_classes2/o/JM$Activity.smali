.class public final Lo/JM$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/JM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# instance fields
.field private final a:Z

.field private b:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method public constructor <init>(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo/JM$Activity;->a:Z

    iput-object p2, p0, Lo/JM$Activity;->b:Lcom/netflix/mediaclient/android/app/Status;

    return-void
.end method


# virtual methods
.method public final a()Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/JM$Activity;->b:Lcom/netflix/mediaclient/android/app/Status;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lo/JM$Activity;->a:Z

    return v0
.end method
