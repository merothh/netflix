.class Lo/MimeTypeMap$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MimeTypeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation


# static fields
.field static final a:Lo/MimeTypeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    new-instance v0, Lo/MimeTypeMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/MimeTypeMap;-><init>(Lo/MimeTypeMap$2;)V

    sput-object v0, Lo/MimeTypeMap$Activity;->a:Lo/MimeTypeMap;

    return-void
.end method
