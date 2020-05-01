.class public final Lo/GenericInflater;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/GenericInflater$StateListAnimator;
    }
.end annotation


# static fields
.field public static final e:Lo/GenericInflater$StateListAnimator;


# instance fields
.field private final b:Lo/WebViewMethodCalledOnWrongThreadViolation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/GenericInflater$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/GenericInflater$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/GenericInflater;->e:Lo/GenericInflater$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/WebViewMethodCalledOnWrongThreadViolation;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Lo/WebViewMethodCalledOnWrongThreadViolation;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 15
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p2, p0, Lo/GenericInflater;->b:Lo/WebViewMethodCalledOnWrongThreadViolation;

    return-void
.end method

.method private final e(Lo/WebViewMethodCalledOnWrongThreadViolation;)Ljava/lang/String;
    .locals 2

    .line 50
    invoke-virtual {p1}, Lo/WebViewMethodCalledOnWrongThreadViolation;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "BLOB"

    goto :goto_0

    :cond_0
    const-string p1, "TEXT"

    .line 51
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE falcor_leafs (path TEXT PRIMARY KEY NOT NULL,path_hashcode INTEGER NOT NULL,type INTEGER NOT NULL,expires INTEGER,timestamp INTEGER,size INTEGER,write_time INTEGER NOT NULL,access_time INTEGER NOT NULL,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") WITHOUT ROWID;"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lo/GenericInflater;->b:Lo/WebViewMethodCalledOnWrongThreadViolation;

    invoke-direct {p0, v0}, Lo/GenericInflater;->e(Lo/WebViewMethodCalledOnWrongThreadViolation;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX path_hashcode_index ON falcor_leafs(path_hashcode);"

    .line 70
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX access_time_index ON falcor_leafs(access_time);"

    .line 71
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "db"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS falcor_leafs"

    .line 75
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p1}, Lo/GenericInflater;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
