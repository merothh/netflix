.class Lo/BaseClientRequest$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ClientTransactionItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BaseClientRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation


# static fields
.field private static final c:[Ljava/lang/String;


# instance fields
.field private final d:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "_data"

    .line 120
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/BaseClientRequest$Activity;->c:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lo/BaseClientRequest$Activity;->d:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public b(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6

    .line 129
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 130
    iget-object v0, p0, Lo/BaseClientRequest$Activity;->d:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lo/BaseClientRequest$Activity;->c:[Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v4, v3

    const-string v3, "kind = 1 AND video_id = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method