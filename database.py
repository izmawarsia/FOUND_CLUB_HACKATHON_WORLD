import streamlit as st
# import mysql.connector


# def get_connection():
#     return mysql.connector.connect(
#         host="mysql-22388757-techclub-found-club-927f.l.aivencloud.com",
#         user="avnadmin",
#         password="AVNS_OmTspJm1K8N-MYNl4Nm",
#         database="defaultdb",
#         port=18936
#     )

# def execute_query(query, params=None, fetch=False):
#     conn = get_connection()
    
#     cursor = conn.cursor(dictionary=True, buffered=True) 
    
#     result = None
#     try:
#         cursor.execute(query, params or ())
        
#         if fetch:
#             result = cursor.fetchall()
        
        
#         if not fetch:
#             conn.commit()
            
#     except Exception as e:
#         print(f"Error executing query: {e}")
#         conn.rollback() 
#     finally:
       
#         cursor.close()
#         conn.close()
        
#     return result


#     import streamlit as st
import mysql.connector

def get_connection():
    try:
        return mysql.connector.connect(
            host="mysql-13453568-techclub-found-club-927f.d.aivencloud.com",
            user="avnadmin",
            password="AVNS_fsQwtkrtxGF1iYFUu7P",
            database="defaultdb",
            port=18936,
            # SSL settings for Aiven
            # ssl_mode='REQUIRED' 
            ssl_disabled=False
        )
    except mysql.connector.Error as err:
        st.error(f"Database Connection Error: {err}")
        return None

def execute_query(query, params=None, fetch=False):
    conn = get_connection()
    if conn is None:
        return None
        
    # dictionary=True results ko list of dicts mein deta hai (asan handling)
    # buffered=True cursor ko data fetch karne ke baad foran free kar deta hai
    cursor = conn.cursor(dictionary=True, buffered=True) 
    
    result = None
    try:
        cursor.execute(query, params or ())
        
        if fetch:
            result = cursor.fetchall()
        else:
            conn.commit()
            
    except Exception as e:
        st.error(f"Error executing query: {e}")
        conn.rollback() 
    finally:
        cursor.close()
        conn.close()
        
    return result